.class public abstract Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.super Lcom/trello/rxlifecycle/components/support/RxFragmentActivity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/trello/rxlifecycle/components/support/RxFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/trello/rxlifecycle/components/support/RxFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/trello/rxlifecycle/components/support/RxFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->setView()V

    .line 21
    invoke-static {}, Lcom/meizu/smart/wristband/Exit;->getInstance()Lcom/meizu/smart/wristband/Exit;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/smart/wristband/Exit;->addActivity(Landroid/app/Activity;)V

    .line 29
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Lcom/trello/rxlifecycle/components/support/RxFragmentActivity;->onPause()V

    .line 43
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Lcom/trello/rxlifecycle/components/support/RxFragmentActivity;->onResume()V

    .line 36
    return-void
.end method

.method public abstract setView()V
.end method
