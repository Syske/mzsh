.class public abstract Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEvent;
.super Lcom/jakewharton/rxbinding/view/ViewEvent;
.source "ViewGroupHierarchyChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/ViewEvent",
        "<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final child:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewEvent;-><init>(Landroid/view/View;)V

    .line 12
    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEvent;->child:Landroid/view/View;

    .line 13
    return-void
.end method


# virtual methods
.method public final child()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEvent;->child:Landroid/view/View;

    return-object v0
.end method
