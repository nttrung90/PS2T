.class public final Landroidx/lifecycle/z$a;
.super Ld3/f;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/z;-><init>(Le1/b;Landroidx/lifecycle/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/f;",
        "Lc3/a<",
        "Landroidx/lifecycle/a0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Landroidx/lifecycle/g0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/g0;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/z$a;->d:Landroidx/lifecycle/g0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/z$a;->d:Landroidx/lifecycle/g0;

    invoke-static {v0}, Landroidx/lifecycle/y;->c(Landroidx/lifecycle/g0;)Landroidx/lifecycle/a0;

    move-result-object v0

    return-object v0
.end method
