.class final Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe;
.super Ljava/lang/Object;
.source "ViewAttachesOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final callOnAttach:Z

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callOnAttach"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe;->view:Landroid/view/View;

    .line 19
    iput-boolean p2, p0, Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe;->callOnAttach:Z

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe;->callOnAttach:Z

    return v0
.end method

.method static synthetic access$100(Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe;->view:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Void;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 25
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe;Lrx/Subscriber;)V

    .line 38
    .local v0, "listener":Landroid/view/View$OnAttachStateChangeListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 40
    new-instance v1, Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe$2;

    invoke-direct {v1, p0, v0}, Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/view/ViewAttachesOnSubscribe;Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 45
    return-void
.end method
