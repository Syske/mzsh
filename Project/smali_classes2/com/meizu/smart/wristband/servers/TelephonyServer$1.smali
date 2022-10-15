.class Lcom/meizu/smart/wristband/servers/TelephonyServer$1;
.super Landroid/telephony/PhoneStateListener;
.source "TelephonyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/servers/TelephonyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/TelephonyServer;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/TelephonyServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/TelephonyServer;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/TelephonyServer$1;->this$0:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 17
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 155
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/smart/wristband/servers/TelephonyServer$1;->this$0:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    invoke-static {v14}, Lcom/meizu/smart/wristband/servers/TelephonyServer;->access$400(Lcom/meizu/smart/wristband/servers/TelephonyServer;)Ljava/util/Vector;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Vector;->clear()V

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/smart/wristband/servers/TelephonyServer$1;->this$0:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    invoke-static {v14}, Lcom/meizu/smart/wristband/servers/TelephonyServer;->access$300(Lcom/meizu/smart/wristband/servers/TelephonyServer;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/smart/wristband/servers/TelephonyServer$1;->this$0:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/meizu/smart/wristband/servers/TelephonyServer;->access$102(Lcom/meizu/smart/wristband/servers/TelephonyServer;Z)Z

    .line 158
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 159
    .local v6, "msg":Landroid/os/Message;
    const/4 v14, 0x1

    iput v14, v6, Landroid/os/Message;->what:I

    .line 160
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/smart/wristband/servers/TelephonyServer$1;->this$0:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    invoke-static {v14}, Lcom/meizu/smart/wristband/servers/TelephonyServer;->access$300(Lcom/meizu/smart/wristband/servers/TelephonyServer;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    const-string v14, "\u505c\u6b62\u6765\u7535\u63d0\u9192"

    invoke-static {v14}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 164
    .end local v6    # "msg":Landroid/os/Message;
    :cond_0
    :goto_1
    invoke-super/range {p0 .. p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 165
    :cond_1
    return-void

    .line 53
    :pswitch_0
    :try_start_0
    new-instance v14, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/servers/TelephonyServer$1;->this$0:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    invoke-static {v15}, Lcom/meizu/smart/wristband/servers/TelephonyServer;->access$000(Lcom/meizu/smart/wristband/servers/TelephonyServer;)Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x0

    sget-object v16, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->caller:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-virtual/range {v14 .. v16}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v1

    .line 54
    .local v1, "caller":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->getValue()Ljava/lang/String;

    move-result-object v14

    const-string v15, "00"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-nez v14, :cond_1

    .line 60
    .end local v1    # "caller":Lcom/meizu/smart/wristband/models/database/entity/Other;
    :cond_2
    :goto_2
    const-string v14, "CALL_STATE_RINGING"

    invoke-static {v14}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 61
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/smart/wristband/servers/TelephonyServer$1;->this$0:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    invoke-static {v14}, Lcom/meizu/smart/wristband/servers/TelephonyServer;->access$000(Lcom/meizu/smart/wristband/servers/TelephonyServer;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Ldolphin/tools/ble/BleUtil;->checkBleEnable(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 62
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/smart/wristband/servers/TelephonyServer$1;->this$0:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    invoke-static {v14}, Lcom/meizu/smart/wristband/servers/TelephonyServer;->access$000(Lcom/meizu/smart/wristband/servers/TelephonyServer;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 63
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/smart/wristband/servers/TelephonyServer$1;->this$0:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/meizu/smart/wristband/servers/TelephonyServer;->access$102(Lcom/meizu/smart/wristband/servers/TelephonyServer;Z)Z

    .line 64
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 65
    .restart local v6    # "msg":Landroid/os/Message;
    const/4 v14, 0x0

    iput v14, v6, Landroid/os/Message;->what:I

    .line 66
    const/4 v14, 0x0

    iput v14, v6, Landroid/os/Message;->arg1:I

    .line 67
    move-object/from16 v13, p2

    .line 69
    .local v13, "sendStr":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u6765\u7535 incomingNumber = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 70
    invoke-static/range {p2 .. p2}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 71
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/smart/wristband/servers/TelephonyServer$1;->this$0:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/meizu/smart/wristband/servers/TelephonyServer;->access$200(Lcom/meizu/smart/wristband/servers/TelephonyServer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "name":Ljava/lang/String;
    const-string v14, "%"

    invoke-virtual {v7, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 73
    const-string v7, ""

    .line 75
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u6765\u7535 name = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 76
    invoke-static {v7}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 77
    const-string v14, " "

    const-string v15, ""

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 79
    const-string v14, "[\\u4e00-\\u9fa5]"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 80
    .local v10, "pattern1":Ljava/util/regex/Pattern;
    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 81
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 82
    const-string v14, "[^\\u4e00-\\u9fa5\\da-zA-Z]"

    const-string v15, ""

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "newname":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-ne v14, v15, :cond_6

    .line 84
    move-object v7, v8

    .line 90
    :goto_3
    invoke-static {v7}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 91
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x4

    if-le v14, v15, :cond_4

    .line 92
    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-static {v7, v14, v15}, Ldolphin/tools/util/StringUtil;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 93
    :cond_4
    const/4 v14, 0x1

    iput v14, v6, Landroid/os/Message;->arg1:I

    .line 94
    move-object v13, v7

    .line 142
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "newname":Ljava/lang/String;
    .end local v10    # "pattern1":Ljava/util/regex/Pattern;
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/smart/wristband/servers/TelephonyServer$1;->this$0:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    invoke-static {v14}, Lcom/meizu/smart/wristband/servers/TelephonyServer;->access$300(Lcom/meizu/smart/wristband/servers/TelephonyServer;)Landroid/os/Handler;

    move-result-object v14

    iget v15, v6, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    iput-object v13, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/smart/wristband/servers/TelephonyServer$1;->this$0:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    invoke-static {v14}, Lcom/meizu/smart/wristband/servers/TelephonyServer;->access$300(Lcom/meizu/smart/wristband/servers/TelephonyServer;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 57
    .end local v6    # "msg":Landroid/os/Message;
    .end local v13    # "sendStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 58
    .local v2, "e":Ljava/sql/SQLException;
    invoke-virtual {v2}, Ljava/sql/SQLException;->printStackTrace()V

    goto/16 :goto_2

    .line 86
    .end local v2    # "e":Ljava/sql/SQLException;
    .restart local v3    # "matcher":Ljava/util/regex/Matcher;
    .restart local v6    # "msg":Landroid/os/Message;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "newname":Ljava/lang/String;
    .restart local v10    # "pattern1":Ljava/util/regex/Pattern;
    .restart local v13    # "sendStr":Ljava/lang/String;
    :cond_6
    const-string v14, "\u6765\u7535: \u540d\u79f0\u5728\u5b57\u5e93\u627e\u4e0d\u5230! \u663e\u793a\u624b\u673a\u53f7"

    invoke-static {v14}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 87
    const-string v7, ""

    goto :goto_3

    .line 97
    .end local v8    # "newname":Ljava/lang/String;
    :cond_7
    const-string v14, "\u6765\u7535: \u4e0d\u662f\u4e2d\u6587\uff0c\u67e5\u627e\u6cd5\u6587"

    invoke-static {v14}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 98
    const-string v14, "[\\u0020-\\u20ac]"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 99
    .local v12, "pattern3":Ljava/util/regex/Pattern;
    invoke-virtual {v12, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 100
    .local v5, "matcher2":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 101
    const-string v14, "[^\\u0020-\\u20ac\\da-zA-Z]"

    const-string v15, ""

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 102
    .local v9, "newname1":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-ne v14, v15, :cond_9

    .line 104
    :try_start_1
    const-string v14, "UTF-8"

    invoke-static {v9, v14}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 114
    :goto_5
    invoke-static {v7}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 115
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x12

    if-le v14, v15, :cond_8

    .line 116
    const/4 v14, 0x0

    const/16 v15, 0x12

    invoke-static {v7, v14, v15}, Ldolphin/tools/util/StringUtil;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 117
    :cond_8
    move-object v13, v7

    goto :goto_4

    .line 105
    :catch_1
    move-exception v2

    .line 106
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_5

    .line 110
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_9
    const-string v14, "\u6765\u7535: \u540d\u79f0\u5728\u5b57\u5e93\u627e\u4e0d\u5230! \u663e\u793a\u624b\u673a\u53f7"

    invoke-static {v14}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 111
    const-string v7, ""

    goto :goto_5

    .line 120
    .end local v9    # "newname1":Ljava/lang/String;
    :cond_a
    const-string v14, "[\\da-zA-Z]"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 121
    .local v11, "pattern2":Ljava/util/regex/Pattern;
    invoke-virtual {v11, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 122
    .local v4, "matcher1":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 123
    const-string v14, "[^\\da-zA-Z]"

    const-string v15, ""

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 124
    .restart local v8    # "newname":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-ne v14, v15, :cond_c

    .line 125
    move-object v7, v8

    .line 130
    :goto_6
    invoke-static {v7}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 131
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x12

    if-le v14, v15, :cond_b

    .line 132
    const/4 v14, 0x0

    const/16 v15, 0x12

    invoke-static {v7, v14, v15}, Ldolphin/tools/util/StringUtil;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 134
    :cond_b
    move-object v13, v7

    goto/16 :goto_4

    .line 127
    :cond_c
    const-string v14, "\u6765\u7535: \u540d\u79f0\u5728\u5b57\u5e93\u627e\u4e0d\u5230! \u663e\u793a\u624b\u673a\u53f7"

    invoke-static {v14}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 128
    const-string v7, ""

    goto :goto_6

    .line 149
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "matcher1":Ljava/util/regex/Matcher;
    .end local v5    # "matcher2":Ljava/util/regex/Matcher;
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "newname":Ljava/lang/String;
    .end local v10    # "pattern1":Ljava/util/regex/Pattern;
    .end local v11    # "pattern2":Ljava/util/regex/Pattern;
    .end local v12    # "pattern3":Ljava/util/regex/Pattern;
    .end local v13    # "sendStr":Ljava/lang/String;
    :pswitch_1
    const-string v14, "CALL_STATE_OFFHOOK"

    invoke-static {v14}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 153
    :pswitch_2
    const-string v14, "CALL_STATE_IDLE"

    invoke-static {v14}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
