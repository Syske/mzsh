.class Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$3;
.super Ljava/lang/Object;
.source "AlarmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->showCheckDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

.field final synthetic val$dlgTip:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$3;->val$dlgTip:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 732
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->access$400(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;)V

    .line 733
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$3;->val$dlgTip:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 734
    return-void
.end method
