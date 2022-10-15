.class Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity$3;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 139
    if-eqz p2, :cond_0

    .line 140
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 144
    :cond_0
    return-void
.end method
