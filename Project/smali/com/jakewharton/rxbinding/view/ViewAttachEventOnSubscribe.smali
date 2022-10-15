.class final Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;
.super Ljava/lang/Object;
.source "ViewAttachEventOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lcom/jakewharton/rxbinding/view/ViewAttachEvent;",
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
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;->view:Landroid/view/View;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;->view:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lcom/jakewharton/rxbinding/view/ViewAttachEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/jakewharton/rxbinding/view/ViewAttachEvent;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 25
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;Lrx/Subscriber;)V

    .line 38
    .local v0, "listener":Landroid/view/View$OnAttachStateChangeListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 40
    new-instance v1, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$2;

    invoke-direct {v1, p0, v0}, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 45
    return-void
.end method
