.class public final Landroidx/fragment/app/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/fragment/app/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/t<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/t<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/t;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/t;

    iget-object v0, v0, Landroidx/fragment/app/t;->f:Landroidx/fragment/app/z;

    invoke-virtual {v0}, Landroidx/fragment/app/y;->Q()V

    return-void
.end method
