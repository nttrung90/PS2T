.class public final Lc1/g;
.super Landroidx/recyclerview/widget/y;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final f:Landroidx/recyclerview/widget/RecyclerView;

.field public final g:Landroidx/recyclerview/widget/y$a;

.field public final h:Lc1/g$a;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/y;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/y;->e:Landroidx/recyclerview/widget/y$a;

    .line 3
    iput-object v0, p0, Lc1/g;->g:Landroidx/recyclerview/widget/y$a;

    .line 4
    new-instance v0, Lc1/g$a;

    invoke-direct {v0, p0}, Lc1/g$a;-><init>(Lc1/g;)V

    iput-object v0, p0, Lc1/g;->h:Lc1/g$a;

    .line 5
    iput-object p1, p0, Lc1/g;->f:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final j()Lj0/a;
    .locals 1

    iget-object v0, p0, Lc1/g;->h:Lc1/g$a;

    return-object v0
.end method
