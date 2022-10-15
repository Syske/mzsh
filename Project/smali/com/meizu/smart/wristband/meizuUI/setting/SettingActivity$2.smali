.class Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->setListener()V
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
    .line 262
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 265
    if-eqz p2, :cond_0

    .line 266
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
