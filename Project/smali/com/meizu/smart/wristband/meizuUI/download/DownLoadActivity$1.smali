.class Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;
.super Ljava/lang/Object;
.source "DownLoadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->showDownloadDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

.field final synthetic val$ad:Landroid/app/AlertDialog;

.field final synthetic val$dayNum:I


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;ILandroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->val$dayNum:I

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->val$ad:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 95
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    const v6, 0x7f080293

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    iget-object v4, v4, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->radio_bt_all:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    invoke-static {v4, v6, v6}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_1
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    iget-boolean v4, v4, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->timeErrow:Z

    if-eqz v4, :cond_3

    .line 114
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    const v6, 0x7f08019a

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    :goto_2
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    iput-boolean v8, v4, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->timeErrow:Z

    goto :goto_0

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    iget-object v4, v4, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->tv_start_time:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "startTime":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    iget-object v4, v4, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->tv_end_time:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "endTime":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    invoke-static {v4, v3}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 104
    .local v2, "startDate":I
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    invoke-static {v4, v1}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, "endDate":I
    if-le v2, v0, :cond_2

    .line 106
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    iput-boolean v5, v4, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->timeErrow:Z

    goto :goto_1

    .line 108
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    invoke-static {v5, v3}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    invoke-static {v5, v1}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->val$dayNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    invoke-static {v4, v3, v1}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 116
    .end local v0    # "endDate":I
    .end local v1    # "endTime":Ljava/lang/String;
    .end local v2    # "startDate":I
    .end local v3    # "startTime":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 117
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1$1;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 127
    :pswitch_1
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 130
    :pswitch_2
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    iput-boolean v8, v4, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->isEndTime:Z

    .line 131
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    invoke-static {v5}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    iget-object v6, v6, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->tv_start_time:Landroid/widget/Button;

    invoke-static {v4, v5, v6}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;Landroid/content/Context;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 134
    :pswitch_3
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    iput-boolean v5, v4, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->isEndTime:Z

    .line 135
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    invoke-static {v5}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    iget-object v6, v6, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->tv_end_time:Landroid/widget/Button;

    invoke-static {v4, v5, v6}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;Landroid/content/Context;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0222
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
