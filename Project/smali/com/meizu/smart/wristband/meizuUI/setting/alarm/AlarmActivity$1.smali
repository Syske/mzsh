.class Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$1;
.super Ljava/lang/Object;
.source "AlarmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->setListener()V
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
    .line 127
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    sget-object v1, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->alarmsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->operating_alarm:I

    .line 133
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->operating_alarm:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    const v1, 0x7f0800ac

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    iget v2, v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->operating_alarm:I

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;ZI)V

    goto :goto_0
.end method
