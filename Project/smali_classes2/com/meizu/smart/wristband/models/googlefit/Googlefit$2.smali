.class final Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;
.super Ljava/lang/Object;
.source "Googlefit.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->writeStep(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic val$sportList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;->val$mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p2, p0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;->val$sportList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 26

    .prologue
    .line 61
    invoke-static {}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "begin to writeStep google fit 2"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;->val$mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;->val$mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 63
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 165
    :goto_0
    return-object v3

    .line 66
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->isGoogleFitEnable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 67
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 70
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;->val$sportList:Ljava/util/List;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;->val$sportList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 71
    :cond_3
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 73
    :cond_4
    invoke-static {}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "begin to writeStep google fit 4"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v3, Lcom/google/android/gms/fitness/data/DataSource$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/data/DataSource$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;->val$context:Landroid/content/Context;

    .line 75
    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setAppPackageName(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    .line 76
    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-static {}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - step count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setStreamName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 78
    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setType(I)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->build()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v14

    .line 80
    .local v14, "dataSource":Lcom/google/android/gms/fitness/data/DataSource;
    invoke-static {v14}, Lcom/google/android/gms/fitness/data/DataSet;->create(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v11

    .line 82
    .local v11, "dataSet":Lcom/google/android/gms/fitness/data/DataSet;
    new-instance v3, Lcom/google/android/gms/fitness/data/DataSource$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/data/DataSource$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;->val$context:Landroid/content/Context;

    .line 83
    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setAppPackageName(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    .line 84
    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-static {}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - CALORIES count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setStreamName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 86
    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setType(I)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    .line 87
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->build()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v15

    .line 88
    .local v15, "dataSource1":Lcom/google/android/gms/fitness/data/DataSource;
    invoke-static {v15}, Lcom/google/android/gms/fitness/data/DataSet;->create(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v12

    .line 90
    .local v12, "dataSet1":Lcom/google/android/gms/fitness/data/DataSet;
    new-instance v3, Lcom/google/android/gms/fitness/data/DataSource$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/data/DataSource$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;->val$context:Landroid/content/Context;

    .line 91
    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setAppPackageName(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    .line 92
    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-static {}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - CALORIES count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setStreamName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 94
    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setType(I)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object v3

    .line 95
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->build()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v16

    .line 96
    .local v16, "dataSource2":Lcom/google/android/gms/fitness/data/DataSource;
    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/fitness/data/DataSet;->create(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v13

    .line 99
    .local v13, "dataSet2":Lcom/google/android/gms/fitness/data/DataSet;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;->val$sportList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_5
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    .line 102
    .local v22, "sport":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    :try_start_0
    invoke-virtual/range {v22 .. v22}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 105
    .local v24, "stepCountDelta":I
    invoke-virtual/range {v22 .. v22}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStartTime()Ljava/util/Date;

    move-result-object v23

    .line 106
    .local v23, "start":Ljava/util/Date;
    invoke-virtual/range {v22 .. v22}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getEndTime()Ljava/util/Date;

    move-result-object v18

    .line 108
    .local v18, "end":Ljava/util/Date;
    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_5

    .line 111
    invoke-virtual {v11}, Lcom/google/android/gms/fitness/data/DataSet;->createDataPoint()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v3

    .line 112
    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v2

    .line 113
    .local v2, "dataPoint":Lcom/google/android/gms/fitness/data/DataPoint;
    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_STEPS:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/google/android/gms/fitness/data/Value;->setInt(I)V

    .line 114
    invoke-virtual {v11, v2}, Lcom/google/android/gms/fitness/data/DataSet;->add(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 116
    invoke-virtual {v12}, Lcom/google/android/gms/fitness/data/DataSet;->createDataPoint()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v3

    .line 117
    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v9

    .line 118
    .local v9, "dataPoint1":Lcom/google/android/gms/fitness/data/DataPoint;
    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_CALORIES:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v9, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getCalorie()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/Value;->setFloat(F)V

    .line 119
    invoke-virtual {v12, v9}, Lcom/google/android/gms/fitness/data/DataSet;->add(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 121
    invoke-virtual {v13}, Lcom/google/android/gms/fitness/data/DataSet;->createDataPoint()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v3

    .line 122
    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v10

    .line 123
    .local v10, "dataPoint2":Lcom/google/android/gms/fitness/data/DataPoint;
    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_DISTANCE:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v10, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getDistance()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/Value;->setFloat(F)V

    .line 124
    invoke-virtual {v13, v10}, Lcom/google/android/gms/fitness/data/DataSet;->add(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 126
    invoke-static {}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inserting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " step to dataset in the History API."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n startTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n endTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n step + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Calorie:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 129
    invoke-virtual/range {v22 .. v22}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getCalorie()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "distance : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getDistance()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 131
    .end local v2    # "dataPoint":Lcom/google/android/gms/fitness/data/DataPoint;
    .end local v9    # "dataPoint1":Lcom/google/android/gms/fitness/data/DataPoint;
    .end local v10    # "dataPoint2":Lcom/google/android/gms/fitness/data/DataPoint;
    .end local v18    # "end":Ljava/util/Date;
    .end local v23    # "start":Ljava/util/Date;
    .end local v24    # "stepCountDelta":I
    :catch_0
    move-exception v17

    .line 132
    .local v17, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inserting the dataset failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 136
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v22    # "sport":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    :cond_6
    sget-object v3, Lcom/google/android/gms/fitness/Fitness;->HistoryApi:Lcom/google/android/gms/fitness/HistoryApi;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;->val$mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 137
    invoke-interface {v3, v4, v11}, Lcom/google/android/gms/fitness/HistoryApi;->insertData(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v3

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 138
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v19

    check-cast v19, Lcom/google/android/gms/common/api/Status;

    .line 140
    .local v19, "insertStatus0":Lcom/google/android/gms/common/api/Status;
    sget-object v3, Lcom/google/android/gms/fitness/Fitness;->HistoryApi:Lcom/google/android/gms/fitness/HistoryApi;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;->val$mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 141
    invoke-interface {v3, v4, v12}, Lcom/google/android/gms/fitness/HistoryApi;->insertData(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v3

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 142
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v20

    check-cast v20, Lcom/google/android/gms/common/api/Status;

    .line 144
    .local v20, "insertStatus1":Lcom/google/android/gms/common/api/Status;
    sget-object v3, Lcom/google/android/gms/fitness/Fitness;->HistoryApi:Lcom/google/android/gms/fitness/HistoryApi;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;->val$mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 145
    invoke-interface {v3, v4, v13}, Lcom/google/android/gms/fitness/HistoryApi;->insertData(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v3

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 146
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v21

    check-cast v21, Lcom/google/android/gms/common/api/Status;

    .line 149
    .local v21, "insertStatus2":Lcom/google/android/gms/common/api/Status;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_7

    .line 150
    invoke-static {}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1 There was a problem inserting the dataset."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0

    .line 154
    :cond_7
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_8

    .line 155
    invoke-static {}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2 There was a problem inserting the dataset."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0

    .line 159
    :cond_8
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_9

    .line 160
    invoke-static {}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3 There was a problem inserting the dataset."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0

    .line 164
    :cond_9
    invoke-static {}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "inserting the dataset ok!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
