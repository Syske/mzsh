.class Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe$1;
.super Ljava/lang/Object;
.source "ViewGroupHierarchyChangeEventOnSubscribe.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "parent":Landroid/view/View;
    invoke-static {p1, p2}, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChildViewAddEvent;->create(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChildViewAddEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 26
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "parent":Landroid/view/View;
    invoke-static {p1, p2}, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChildViewRemoveEvent;->create(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChildViewRemoveEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 32
    :cond_0
    return-void
.end method
