.class Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;
.super Ljava/lang/Object;
.source "ModelDataManager.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelDataManager$3;->call(Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$3;

.field final synthetic val$entity:Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/ModelDataManager$3;Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/ModelDataManager$3;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$3;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 26

    .prologue
    .line 154
    :try_start_0
    const-string v21, "\u5f00\u59cb\u4fdd\u5b58\u6570\u636e..."

    invoke-static/range {v21 .. v21}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 155
    const/16 v20, 0x0

    .line 156
    .local v20, "total":I
    const/4 v2, 0x0

    .line 157
    .local v2, "current":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->getSports()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->getSports()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    :goto_0
    add-int v20, v20, v21

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->getRtsports()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->getRtsports()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    :goto_1
    add-int v20, v20, v21

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->getDayHeartrates()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->getDayHeartrates()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    :goto_2
    add-int v20, v20, v21

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->getSleeps()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->getSleeps()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    :goto_3
    add-int v20, v20, v21

    .line 168
    new-instance v15, Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$3;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;-><init>(Landroid/content/Context;)V

    .line 169
    .local v15, "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->getSports()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_5

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 176
    .local v16, "startTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->getSports()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;

    .line 177
    .local v14, "sportListdata":Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;->val$user:Lcom/meizu/smart/wristband/models/database/entity/User;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v14}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->saveFromNetworkResponse(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;)V

    .line 179
    add-int/lit8 v2, v2, 0x1

    int-to-double v0, v2

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    mul-double v22, v22, v24

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v10, v0

    .line 180
    .local v10, "percent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;->val$progressSubject:Lrx/subjects/BehaviorSubject;

    move-object/from16 v22, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    .line 231
    .end local v2    # "current":I
    .end local v10    # "percent":I
    .end local v14    # "sportListdata":Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;
    .end local v15    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    .end local v16    # "startTime":J
    .end local v20    # "total":I
    :catch_0
    move-exception v4

    .line 232
    .local v4, "e":Ljava/sql/SQLException;
    invoke-virtual {v4}, Ljava/sql/SQLException;->printStackTrace()V

    .line 233
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\u7ed3\u675f..."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 238
    .end local v4    # "e":Ljava/sql/SQLException;
    :goto_5
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    :goto_6
    return-object v21

    .line 157
    .restart local v2    # "current":I
    .restart local v20    # "total":I
    :cond_0
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 158
    :cond_1
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 159
    :cond_2
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 160
    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 183
    .restart local v15    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    .restart local v16    # "startTime":J
    :cond_4
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 184
    .local v6, "endTime":J
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\u63d2\u5165\u8fd0\u52a8\u6570\u636e\u8017\u65f6\uff0c\u8017\u65f6\u3010"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v6, v16

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\u3011\u79d2\uff01 "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 187
    .end local v6    # "endTime":J
    .end local v16    # "startTime":J
    :cond_5
    const-string v21, "\u7ed3\u675f\u8fd0\u52a8\u6570\u636e..."

    invoke-static/range {v21 .. v21}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->getRtsports()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_7

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 190
    .local v18, "startTime1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->getRtsports()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;

    .line 191
    .local v13, "sportListDataReal":Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;->val$user:Lcom/meizu/smart/wristband/models/database/entity/User;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v13}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->saveFromNetworkResponse1(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;)V

    .line 192
    add-int/lit8 v2, v2, 0x1

    int-to-double v0, v2

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    mul-double v22, v22, v24

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v10, v0

    .line 193
    .restart local v10    # "percent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;->val$progressSubject:Lrx/subjects/BehaviorSubject;

    move-object/from16 v22, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 234
    .end local v2    # "current":I
    .end local v10    # "percent":I
    .end local v13    # "sportListDataReal":Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;
    .end local v15    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    .end local v18    # "startTime1":J
    .end local v20    # "total":I
    :catch_1
    move-exception v4

    .line 235
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 195
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "current":I
    .restart local v15    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    .restart local v18    # "startTime1":J
    .restart local v20    # "total":I
    :cond_6
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 196
    .local v8, "endTime1":J
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\u63d2\u5165\u4e13\u9879\u8fd0\u52a8\u603b\u8017\u65f6\uff0c\u8017\u65f6\u3010"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v8, v18

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\u3011\u79d2\uff01 "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 199
    .end local v8    # "endTime1":J
    .end local v18    # "startTime1":J
    :cond_7
    const-string v21, "\u7ed3\u675f\u4e13\u9879\u6570\u636e..."

    invoke-static/range {v21 .. v21}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 200
    new-instance v5, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$3;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;-><init>(Landroid/content/Context;)V

    .line 201
    .local v5, "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->getDayHeartrates()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_9

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 203
    .restart local v18    # "startTime1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->getDayHeartrates()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;

    .line 204
    .local v3, "day":Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;->val$user:Lcom/meizu/smart/wristband/models/database/entity/User;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v3}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->saveHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;)Z

    .line 205
    add-int/lit8 v2, v2, 0x1

    int-to-double v0, v2

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    mul-double v22, v22, v24

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v10, v0

    .line 206
    .restart local v10    # "percent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;->val$progressSubject:Lrx/subjects/BehaviorSubject;

    move-object/from16 v22, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_8

    .line 208
    .end local v3    # "day":Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;
    .end local v10    # "percent":I
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 209
    .restart local v8    # "endTime1":J
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\u63d2\u5165\u5fc3\u7387\u6570\u636e\u603b\u8017\u65f6\uff0c\u8017\u65f6\u3010"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v8, v18

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\u3011\u79d2\uff01 "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 212
    .end local v8    # "endTime1":J
    .end local v18    # "startTime1":J
    :cond_9
    const-string v21, "\u7ed3\u675f\u5fc3\u7387\u6570\u636e..."

    invoke-static/range {v21 .. v21}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 213
    new-instance v12, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$3;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;-><init>(Landroid/content/Context;)V

    .line 214
    .local v12, "sleepServer":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->getSleeps()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_b

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 216
    .restart local v18    # "startTime1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;->getSleeps()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;

    .line 217
    .local v11, "sleepListdata":Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;->val$user:Lcom/meizu/smart/wristband/models/database/entity/User;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v11}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->saveFromNetworkResponse(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;)V

    .line 218
    add-int/lit8 v2, v2, 0x1

    int-to-double v0, v2

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    mul-double v22, v22, v24

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v10, v0

    .line 219
    .restart local v10    # "percent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;->val$progressSubject:Lrx/subjects/BehaviorSubject;

    move-object/from16 v22, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_9

    .line 221
    .end local v10    # "percent":I
    .end local v11    # "sleepListdata":Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 222
    .restart local v8    # "endTime1":J
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\u63d2\u5165\u7761\u7720\u6570\u636e\u603b\u8017\u65f6\uff0c\u8017\u65f6\u3010"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v8, v18

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\u3011\u79d2\uff01 "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 225
    .end local v8    # "endTime1":J
    .end local v18    # "startTime1":J
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$3;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;->val$progressSubject:Lrx/subjects/BehaviorSubject;

    move-object/from16 v21, v0

    const/16 v22, 0x64

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$3;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;->val$progressSubject:Lrx/subjects/BehaviorSubject;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lrx/subjects/BehaviorSubject;->onCompleted()V

    .line 228
    const-string v21, "\u7ed3\u675f\u7761\u7720\u6570\u636e..."

    invoke-static/range {v21 .. v21}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 229
    const-string v21, "\u4fdd\u5b58\u6240\u6709\u6570\u636e\u7ed3\u675f..."

    invoke-static/range {v21 .. v21}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 230
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v21

    goto/16 :goto_6
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
