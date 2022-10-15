.class Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$2;
.super Ljava/lang/Object;
.source "AlarmActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    iput p3, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->operating_alarm:I

    .line 168
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    iget v2, v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->operating_alarm:I

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;ZI)V

    .line 170
    return-void
.end method
