.class Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 310
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->access$202(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 313
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 314
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 316
    :cond_0
    return v2
.end method
