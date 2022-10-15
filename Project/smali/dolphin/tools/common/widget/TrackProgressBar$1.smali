.class Ldolphin/tools/common/widget/TrackProgressBar$1;
.super Ljava/lang/Object;
.source "TrackProgressBar.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldolphin/tools/common/widget/TrackProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldolphin/tools/common/widget/TrackProgressBar;


# direct methods
.method constructor <init>(Ldolphin/tools/common/widget/TrackProgressBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ldolphin/tools/common/widget/TrackProgressBar$1;->this$0:Ldolphin/tools/common/widget/TrackProgressBar;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar$1;->this$0:Ldolphin/tools/common/widget/TrackProgressBar;

    invoke-static {v0}, Ldolphin/tools/common/widget/TrackProgressBar;->access$0(Ldolphin/tools/common/widget/TrackProgressBar;)I

    move-result v0

    iget-object v1, p0, Ldolphin/tools/common/widget/TrackProgressBar$1;->this$0:Ldolphin/tools/common/widget/TrackProgressBar;

    invoke-static {v1}, Ldolphin/tools/common/widget/TrackProgressBar;->access$1(Ldolphin/tools/common/widget/TrackProgressBar;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar$1;->this$0:Ldolphin/tools/common/widget/TrackProgressBar;

    invoke-static {v0}, Ldolphin/tools/common/widget/TrackProgressBar;->access$0(Ldolphin/tools/common/widget/TrackProgressBar;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ldolphin/tools/common/widget/TrackProgressBar;->access$2(Ldolphin/tools/common/widget/TrackProgressBar;I)V

    .line 151
    iget-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar$1;->this$0:Ldolphin/tools/common/widget/TrackProgressBar;

    invoke-virtual {v0}, Ldolphin/tools/common/widget/TrackProgressBar;->invalidate()V

    .line 152
    iget-object v0, p0, Ldolphin/tools/common/widget/TrackProgressBar$1;->this$0:Ldolphin/tools/common/widget/TrackProgressBar;

    invoke-static {v0}, Ldolphin/tools/common/widget/TrackProgressBar;->access$3(Ldolphin/tools/common/widget/TrackProgressBar;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 154
    :cond_0
    return v4
.end method
