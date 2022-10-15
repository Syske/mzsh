.class public Lcom/meizu/smart/wristband/servers/SmsContentObserver;
.super Landroid/database/ContentObserver;
.source "SmsContentObserver.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final CASE_CALLER:I

.field private final CASE_NUMBER:I

.field private SMS_INBOX:Landroid/net/Uri;

.field private callerName:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field private cursor:Landroid/database/Cursor;

.field private flag:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mReceivedMsgDate:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 43
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->flag:Z

    .line 49
    iput v0, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->CASE_NUMBER:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->CASE_CALLER:I

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->callerName:Ljava/util/Vector;

    .line 53
    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->SMS_INBOX:Landroid/net/Uri;

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->mReceivedMsgDate:J

    .line 59
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->mHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/servers/SmsContentObserver;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/servers/SmsContentObserver;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->callerName:Ljava/util/Vector;

    return-object v0
.end method

.method private checkSameItem(J)Z
    .locals 3
    .param p1, "date"    # J

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->mReceivedMsgDate:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private generateCallerName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 278
    .local v2, "chars":[C
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v0, "bytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-char v1, v2, v3

    .line 281
    .local v1, "c":C
    iget-object v5, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/meizu/smart/wristband/utils/MatrixUtil;->unicode2Bytes(Landroid/content/Context;I)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 284
    .end local v1    # "c":C
    :cond_0
    return-object v0
.end method

.method private getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mAddress"    # Ljava/lang/String;

    .prologue
    .line 207
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 212
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 213
    .local v2, "sendStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v3

    .line 214
    .local v3, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    iget-boolean v4, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->flag:Z

    if-eqz v4, :cond_1

    invoke-static {v2}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 215
    const-string v4, "1"

    const-string v5, ""

    const-string v6, "0"

    const-string v7, "1"

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/meizu/smart/wristband/servers/BleServer;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v5}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 216
    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 272
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return v4

    .line 217
    :cond_1
    iget-boolean v4, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->flag:Z

    if-eqz v4, :cond_0

    .line 218
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 220
    :pswitch_0
    const-string v4, "0"

    const-string v5, "0"

    const-string v6, "1"

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/meizu/smart/wristband/servers/BleServer;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v5}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 221
    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->callerName:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 226
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6765\u7535\u63d0\u9192 \u540d\u79f0 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 227
    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->generateCallerName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 228
    .local v0, "bytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v0, :cond_2

    .line 229
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->callerName:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 230
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->callerName:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v0    # "bytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->callerName:Ljava/util/Vector;

    invoke-static {v4}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/servers/SmsContentObserver$4;

    invoke-direct {v5, p0, v3}, Lcom/meizu/smart/wristband/servers/SmsContentObserver$4;-><init>(Lcom/meizu/smart/wristband/servers/SmsContentObserver;Lcom/meizu/smart/wristband/servers/BleServer;)V

    invoke-virtual {v4, v5}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    .line 248
    invoke-virtual {v4}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/servers/SmsContentObserver$3;

    invoke-direct {v5, p0, v3}, Lcom/meizu/smart/wristband/servers/SmsContentObserver$3;-><init>(Lcom/meizu/smart/wristband/servers/SmsContentObserver;Lcom/meizu/smart/wristband/servers/BleServer;)V

    invoke-virtual {v4, v5}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/servers/SmsContentObserver$2;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/servers/SmsContentObserver$2;-><init>(Lcom/meizu/smart/wristband/servers/SmsContentObserver;)V

    .line 254
    invoke-virtual {v4, v5}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/servers/SmsContentObserver$1;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/servers/SmsContentObserver$1;-><init>(Lcom/meizu/smart/wristband/servers/SmsContentObserver;)V

    .line 260
    invoke-virtual {v4, v5}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v5}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 266
    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto/16 :goto_0

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onChange(Z)V
    .locals 23
    .param p1, "selfChange"    # Z

    .prologue
    .line 75
    invoke-super/range {p0 .. p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 78
    :try_start_0
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    sget-object v4, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sms:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual {v2, v3, v4}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v21

    .line 79
    .local v21, "sms":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 158
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    .line 161
    .end local v21    # "sms":Lcom/meizu/smart/wristband/models/database/entity/Other;
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v12

    .line 83
    .local v12, "e":Ljava/sql/SQLException;
    :try_start_1
    invoke-virtual {v12}, Ljava/sql/SQLException;->printStackTrace()V

    .line 86
    .end local v12    # "e":Ljava/sql/SQLException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://sms/inbox"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "*"

    aput-object v6, v4, v5

    const-string v5, "_id>?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v22, "-1"

    aput-object v22, v6, v7

    const-string v7, "date desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    if-eqz v2, :cond_5

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    const-string v4, "body"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, "body":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, "_id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    const-string v4, "address"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 97
    .local v13, "incomingNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    const-string v4, "date"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 98
    .local v10, "date":J
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->checkSameItem(J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 158
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    goto/16 :goto_0

    .line 102
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->mReceivedMsgDate:J

    .line 103
    const-string v2, "11"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u62e6\u622a\u5230\u77ed\u4fe1\uff1abody="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ldolphin/tools/ble/BleUtil;->checkBleEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 107
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->flag:Z

    .line 108
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 109
    .local v16, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Landroid/os/Message;->what:I

    .line 110
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 111
    move-object/from16 v20, v13

    .line 113
    .local v20, "sendStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6765\u7535 incomingNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 114
    invoke-static {v13}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 115
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 116
    .local v17, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6765\u7535 name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 117
    invoke-static/range {v17 .. v17}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 118
    const-string v2, " "

    const-string v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 120
    const-string v2, "[\\u4e00-\\u9fa5]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v18

    .line 121
    .local v18, "pattern1":Ljava/util/regex/Pattern;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 122
    .local v14, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 123
    const-string v2, "[^\\u4e00-\\u9fa5\\da-zA-Z]"

    const-string v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 125
    invoke-static/range {v17 .. v17}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 126
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_3

    .line 127
    const/4 v2, 0x0

    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Ldolphin/tools/util/StringUtil;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v17

    .line 128
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 129
    move-object/from16 v20, v17

    .line 144
    .end local v14    # "matcher":Ljava/util/regex/Matcher;
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "pattern1":Ljava/util/regex/Pattern;
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    .end local v8    # "_id":Ljava/lang/String;
    .end local v9    # "body":Ljava/lang/String;
    .end local v10    # "date":J
    .end local v13    # "incomingNumber":Ljava/lang/String;
    .end local v16    # "msg":Landroid/os/Message;
    .end local v20    # "sendStr":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 158
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    goto/16 :goto_0

    .line 132
    .restart local v8    # "_id":Ljava/lang/String;
    .restart local v9    # "body":Ljava/lang/String;
    .restart local v10    # "date":J
    .restart local v13    # "incomingNumber":Ljava/lang/String;
    .restart local v14    # "matcher":Ljava/util/regex/Matcher;
    .restart local v16    # "msg":Landroid/os/Message;
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v18    # "pattern1":Ljava/util/regex/Pattern;
    .restart local v20    # "sendStr":Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string v2, "[\\da-zA-Z]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v19

    .line 133
    .local v19, "pattern2":Ljava/util/regex/Pattern;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 134
    .local v15, "matcher1":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 135
    const-string v2, "[^\\da-zA-Z]"

    const-string v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 136
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    if-le v2, v3, :cond_4

    .line 137
    const/4 v2, 0x0

    const/16 v3, 0x12

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Ldolphin/tools/util/StringUtil;->subString(Ljava/lang/String;II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v20

    goto :goto_1

    .line 153
    .end local v8    # "_id":Ljava/lang/String;
    .end local v9    # "body":Ljava/lang/String;
    .end local v10    # "date":J
    .end local v13    # "incomingNumber":Ljava/lang/String;
    .end local v14    # "matcher":Ljava/util/regex/Matcher;
    .end local v15    # "matcher1":Ljava/util/regex/Matcher;
    .end local v16    # "msg":Landroid/os/Message;
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "pattern1":Ljava/util/regex/Pattern;
    .end local v19    # "pattern2":Ljava/util/regex/Pattern;
    .end local v20    # "sendStr":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 154
    .local v12, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 158
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    goto/16 :goto_0

    .line 156
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 158
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;->cursor:Landroid/database/Cursor;

    :cond_7
    throw v2
.end method
