.class public final Ly0/f;
.super Ly0/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/fragment/app/n;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to get target request code from fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, p1, v0, v1}, Ly0/h;-><init>(Landroidx/fragment/app/n;Ljava/lang/String;I)V

    return-void
.end method
