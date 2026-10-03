.class public abstract Ly0/h;
.super Ly0/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/fragment/app/n;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "fragment"

    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    .line 1
    invoke-static {p1, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Ly0/l;-><init>(Landroidx/fragment/app/n;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Ly0/l;-><init>(Landroidx/fragment/app/n;Ljava/lang/String;)V

    return-void
.end method
