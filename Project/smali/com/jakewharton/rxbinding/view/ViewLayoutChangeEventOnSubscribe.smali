.class final Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;
.super Ljava/lang/Object;
.source "ViewLayoutChangeEventOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;",
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
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;->view:Landroid/view/View;

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;->view:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 21
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;Lrx/Subscriber;)V

    .line 30
    .local v0, "listener":Landroid/view/View$OnLayoutChangeListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 32
    new-instance v1, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe$2;

    invoke-direct {v1, p0, v0}, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 37
    return-void
.end method
