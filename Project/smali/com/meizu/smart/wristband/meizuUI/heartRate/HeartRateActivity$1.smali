.class Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity$1;
.super Ljava/lang/Object;
.source "HeartRateActivity.java"

# interfaces
.implements Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemSelected;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->initDatePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 357
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 358
    .local v1, "nDateOffset":I
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 359
    .local v3, "today":Ljava/util/Date;
    const/4 v4, 0x5

    mul-int/lit8 v5, v1, -0x1

    invoke-static {v3, v4, v5}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateForOffset(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v2

    .line 361
    .local v2, "showDate":Ljava/util/Date;
    const/4 v0, 0x0

    .line 362
    .local v0, "isToday":Z
    if-nez v1, :cond_0

    .line 363
    const/4 v0, 0x1

    .line 365
    :cond_0
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;

    invoke-static {v4, v2, v0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;Ljava/util/Date;Z)V

    .line 367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "view heartrate showdate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 368
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;)Lcom/github/mikephil/charting/charts/LineChart;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 369
    return-void
.end method
