.class Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$1;
.super Ljava/lang/Object;
.source "SportContentActivity.java"

# interfaces
.implements Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemSelected;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->initDatePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 379
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 380
    .local v0, "nDateOffset":I
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 381
    .local v2, "today":Ljava/util/Date;
    const/4 v3, 0x5

    mul-int/lit8 v4, v0, -0x1

    invoke-static {v2, v3, v4}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateForOffset(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v1

    .line 382
    .local v1, "showDate":Ljava/util/Date;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;

    invoke-static {v3, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;Ljava/util/Date;)V

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "view heartrate showdate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 384
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;

    invoke-static {v3, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;Ljava/util/Date;)V

    .line 385
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;)Lcom/github/mikephil/charting/charts/BarChart;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 386
    return-void
.end method
