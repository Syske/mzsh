.class final Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;
.super Ljava/lang/Object;
.source "ViewGroupHierarchyChangeEventOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;->viewGroup:Landroid/view/ViewGroup;

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;->viewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEvent;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 21
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;Lrx/Subscriber;)V

    .line 35
    .local v0, "listener":Landroid/view/ViewGroup$OnHierarchyChangeListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;->viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 37
    new-instance v1, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 42
    return-void
.end method
