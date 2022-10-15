.class Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$5;
.super Ljava/lang/Object;
.source "HandUpActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->showLevelDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

.field final synthetic val$dlgLevel:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$5;->val$dlgLevel:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 412
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->access$702(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;I)I

    .line 413
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->access$800(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;)V

    .line 414
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;)V

    .line 415
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$5;->val$dlgLevel:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 416
    return-void
.end method
