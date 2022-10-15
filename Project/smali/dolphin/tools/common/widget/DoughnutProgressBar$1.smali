.class Ldolphin/tools/common/widget/DoughnutProgressBar$1;
.super Ljava/lang/Object;
.source "DoughnutProgressBar.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldolphin/tools/common/widget/DoughnutProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldolphin/tools/common/widget/DoughnutProgressBar;


# direct methods
.method constructor <init>(Ldolphin/tools/common/widget/DoughnutProgressBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar$1;->this$0:Ldolphin/tools/common/widget/DoughnutProgressBar;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 121
    iget-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar$1;->this$0:Ldolphin/tools/common/widget/DoughnutProgressBar;

    invoke-static {v0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->access$0(Ldolphin/tools/common/widget/DoughnutProgressBar;)I

    move-result v0

    iget-object v1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar$1;->this$0:Ldolphin/tools/common/widget/DoughnutProgressBar;

    invoke-static {v1}, Ldolphin/tools/common/widget/DoughnutProgressBar;->access$1(Ldolphin/tools/common/widget/DoughnutProgressBar;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar$1;->this$0:Ldolphin/tools/common/widget/DoughnutProgressBar;

    invoke-static {v0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->access$0(Ldolphin/tools/common/widget/DoughnutProgressBar;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ldolphin/tools/common/widget/DoughnutProgressBar;->access$2(Ldolphin/tools/common/widget/DoughnutProgressBar;I)V

    .line 123
    iget-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar$1;->this$0:Ldolphin/tools/common/widget/DoughnutProgressBar;

    invoke-virtual {v0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->invalidate()V

    .line 124
    iget-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar$1;->this$0:Ldolphin/tools/common/widget/DoughnutProgressBar;

    invoke-static {v0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->access$3(Ldolphin/tools/common/widget/DoughnutProgressBar;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 126
    :cond_0
    return v4
.end method
