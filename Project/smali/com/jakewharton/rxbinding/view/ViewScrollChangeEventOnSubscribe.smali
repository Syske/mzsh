.class final Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;
.super Ljava/lang/Object;
.source "ViewScrollChangeEventOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;->view:Landroid/view/View;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;->view:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 23
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;Lrx/Subscriber;)V

    .line 31
    .local v0, "listener":Landroid/view/View$OnScrollChangeListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 33
    new-instance v1, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 38
    return-void
.end method
