.class Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$2;
.super Ljava/lang/Object;
.source "AlarmEditActivity.java"

# interfaces
.implements Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$WheelItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/String;)V
    .locals 3
    .param p1, "selectedIndex"    # I
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->access$102(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;I)I

    .line 120
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;II)V

    .line 121
    return-void
.end method
