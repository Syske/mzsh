.class public Lcom/meizu/smart/wristband/servers/SmsServer;
.super Landroid/content/BroadcastReceiver;
.source "SmsServer.java"

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

.field private context:Landroid/content/Context;

.field private flag:Z

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/servers/SmsServer;->flag:Z

    .line 121
    iput v0, p0, Lcom/meizu/smart/wristband/servers/SmsServer;->CASE_NUMBER:I

    .line 122
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/smart/wristband/servers/SmsServer;->CASE_CALLER:I

    .line 189
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/SmsServer;->callerName:Ljava/util/Vector;

    .line 190
    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/SmsServer;->SMS_INBOX:Landroid/net/Uri;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/SmsServer;->handler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/SmsServer;->context:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/servers/SmsServer;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/servers/SmsServer;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/SmsServer;->callerName:Ljava/util/Vector;

    return-object v0
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
    .line 225
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 226
    .local v2, "chars":[C
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v0, "bytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-char v1, v2, v3

    .line 229
    .local v1, "c":C
    iget-object v5, p0, Lcom/meizu/smart/wristband/servers/SmsServer;->context:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/meizu/smart/wristband/utils/MatrixUtil;->unicode2Bytes(Landroid/content/Context;I)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    .end local v1    # "c":C
    :cond_0
    return-object v0
.end method

.method private getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 127
    .local v2, "sendStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/SmsServer;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v3

    .line 128
    .local v3, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    iget-boolean v4, p0, Lcom/meizu/smart/wristband/servers/SmsServer;->flag:Z

    if-eqz v4, :cond_1

    invoke-static {v2}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    const-string v4, "1"

    const-string v5, ""

    const-string v6, "0"

    const-string v7, "1"

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/meizu/smart/wristband/servers/BleServer;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v5}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 130
    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 186
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return v4

    .line 131
    :cond_1
    iget-boolean v4, p0, Lcom/meizu/smart/wristband/servers/SmsServer;->flag:Z

    if-eqz v4, :cond_0

    .line 132
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 134
    :pswitch_0
    const-string v4, "0"

    const-string v5, "0"

    const-string v6, "1"

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/meizu/smart/wristband/servers/BleServer;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v5}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 135
    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/SmsServer;->callerName:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 140
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6765\u7535\u63d0\u9192 \u540d\u79f0 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/servers/SmsServer;->generateCallerName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 142
    .local v0, "bytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v0, :cond_2

    .line 143
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/SmsServer;->callerName:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 144
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/SmsServer;->callerName:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v0    # "bytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/SmsServer;->callerName:Ljava/util/Vector;

    invoke-static {v4}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/servers/SmsServer$4;

    invoke-direct {v5, p0, v3}, Lcom/meizu/smart/wristband/servers/SmsServer$4;-><init>(Lcom/meizu/smart/wristband/servers/SmsServer;Lcom/meizu/smart/wristband/servers/BleServer;)V

    invoke-virtual {v4, v5}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    .line 162
    invoke-virtual {v4}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/servers/SmsServer$3;

    invoke-direct {v5, p0, v3}, Lcom/meizu/smart/wristband/servers/SmsServer$3;-><init>(Lcom/meizu/smart/wristband/servers/SmsServer;Lcom/meizu/smart/wristband/servers/BleServer;)V

    invoke-virtual {v4, v5}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/servers/SmsServer$2;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/servers/SmsServer$2;-><init>(Lcom/meizu/smart/wristband/servers/SmsServer;)V

    .line 168
    invoke-virtual {v4, v5}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/servers/SmsServer$1;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/servers/SmsServer$1;-><init>(Lcom/meizu/smart/wristband/servers/SmsServer;)V

    .line 174
    invoke-virtual {v4, v5}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v5}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 180
    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto/16 :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 52
    .local v2, "bundle":Landroid/os/Bundle;
    const/4 v14, 0x0

    .line 53
    .local v14, "smsMsg":Landroid/telephony/SmsMessage;
    if-eqz v2, :cond_0

    .line 56
    :try_start_0
    new-instance v16, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;-><init>(Landroid/content/Context;)V

    const/16 v17, 0x0

    sget-object v18, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sms:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual/range {v16 .. v18}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v13

    .line 57
    .local v13, "sms":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v16

    const-string v17, "00"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    if-eqz v16, :cond_1

    .line 119
    .end local v13    # "sms":Lcom/meizu/smart/wristband/models/database/entity/Other;
    :cond_0
    return-void

    .line 60
    :catch_0
    move-exception v3

    .line 61
    .local v3, "e":Ljava/sql/SQLException;
    invoke-virtual {v3}, Ljava/sql/SQLException;->printStackTrace()V

    .line 64
    .end local v3    # "e":Ljava/sql/SQLException;
    :cond_1
    const-string v16, "pdus"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/Object;

    move-object/from16 v15, v16

    check-cast v15, [Ljava/lang/Object;

    .line 65
    .local v15, "smsObj":[Ljava/lang/Object;
    array-length v0, v15

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    aget-object v9, v15, v16

    .line 66
    .local v9, "object":Ljava/lang/Object;
    check-cast v9, [B

    .end local v9    # "object":Ljava/lang/Object;
    check-cast v9, [B

    invoke-static {v9}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v14

    .line 67
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "number:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v14}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "incomingNumber":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Ldolphin/tools/ble/BleUtil;->checkBleEnable(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 73
    invoke-static/range {p1 .. p1}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 74
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/smart/wristband/servers/SmsServer;->flag:Z

    .line 75
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 76
    .local v7, "msg":Landroid/os/Message;
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/os/Message;->what:I

    .line 77
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/os/Message;->arg1:I

    .line 78
    move-object v12, v4

    .line 80
    .local v12, "sendStr":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\u6765\u7535 incomingNumber = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 81
    invoke-static {v4}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 82
    invoke-direct/range {p0 .. p0}, Lcom/meizu/smart/wristband/servers/SmsServer;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "name":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\u6765\u7535 name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 84
    invoke-static {v8}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 85
    const-string v18, " "

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 87
    const-string v18, "[\\u4e00-\\u9fa5]"

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 88
    .local v10, "pattern1":Ljava/util/regex/Pattern;
    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 89
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 90
    const-string v18, "[^\\u4e00-\\u9fa5\\da-zA-Z]"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 92
    invoke-static {v8}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 93
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 94
    const/16 v18, 0x0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v8, v0, v1}, Ldolphin/tools/util/StringUtil;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    .line 95
    :cond_2
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v7, Landroid/os/Message;->arg1:I

    .line 96
    move-object v12, v8

    .line 111
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "pattern1":Ljava/util/regex/Pattern;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/SmsServer;->handler:Landroid/os/Handler;

    move-object/from16 v18, v0

    iget v0, v7, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iput-object v12, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/SmsServer;->handler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    .end local v7    # "msg":Landroid/os/Message;
    .end local v12    # "sendStr":Ljava/lang/String;
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 99
    .restart local v5    # "matcher":Ljava/util/regex/Matcher;
    .restart local v7    # "msg":Landroid/os/Message;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v10    # "pattern1":Ljava/util/regex/Pattern;
    .restart local v12    # "sendStr":Ljava/lang/String;
    :cond_5
    const-string v18, "[\\da-zA-Z]"

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 100
    .local v11, "pattern2":Ljava/util/regex/Pattern;
    invoke-virtual {v11, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 101
    .local v6, "matcher1":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 102
    const-string v18, "[^\\da-zA-Z]"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 103
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x12

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 104
    const/16 v18, 0x0

    const/16 v19, 0x12

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v12, v0, v1}, Ldolphin/tools/util/StringUtil;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v12

    goto :goto_1
.end method
