.class public abstract Ly0/l;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final c:Landroidx/fragment/app/n;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/n;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Ly0/l;->c:Landroidx/fragment/app/n;

    return-void
.end method
