.class Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$2;
.super Ljava/lang/Object;
.source "DownLoadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->showTimeDialog(Landroid/content/Context;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

.field final synthetic val$ad:Landroid/app/AlertDialog;

.field final synthetic val$currentYear:I

.field final synthetic val$month:Lcom/desay/wheel/widget/WheelView;

.field final synthetic val$textView:Landroid/widget/TextView;

.field final synthetic val$year:Lcom/desay/wheel/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;Landroid/app/AlertDialog;ILcom/desay/wheel/widget/WheelView;Lcom/desay/wheel/widget/WheelView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$2;->val$ad:Landroid/app/AlertDialog;

    iput p3, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$2;->val$currentYear:I

    iput-object p4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$2;->val$year:Lcom/desay/wheel/widget/WheelView;

    iput-object p5, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$2;->val$month:Lcom/desay/wheel/widget/WheelView;

    iput-object p6, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$2;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 195
    :pswitch_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$2;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 196
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$2;->val$currentYear:I

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$2;->val$year:Lcom/desay/wheel/widget/WheelView;

    invoke-virtual {v3}, Lcom/desay/wheel/widget/WheelView;->getCurrentItem()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 197
    .local v1, "choiceYear":I
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$2;->val$month:Lcom/desay/wheel/widget/WheelView;

    invoke-virtual {v2}, Lcom/desay/wheel/widget/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 198
    .local v0, "choiceMonth":I
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$2;->val$textView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 201
    .end local v0    # "choiceMonth":I
    .end local v1    # "choiceYear":I
    :pswitch_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$2;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x7f0e021c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
