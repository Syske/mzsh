.class Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$5;
.super Ljava/lang/Object;
.source "HeartRateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->showMeasureTipDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

.field final synthetic val$dlgTip:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$5;->val$dlgTip:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 271
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    iget-object v1, v1, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 272
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "showHeartRateTip"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->access$200(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)V

    .line 274
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$5;->val$dlgTip:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 275
    return-void
.end method
