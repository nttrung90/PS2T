.class public abstract Lw2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/f$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lw2/f$b;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "Lw2/f$c<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final c:Lc3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc3/l<",
            "Lw2/f$b;",
            "TE;>;"
        }
    .end annotation
.end field

.field public final d:Lw2/f$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/f$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw2/f$c;Lc3/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/f$c<",
            "TB;>;",
            "Lc3/l<",
            "-",
            "Lw2/f$b;",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lw2/b;->c:Lc3/l;

    .line 3
    instance-of p2, p1, Lw2/b;

    if-eqz p2, :cond_0

    check-cast p1, Lw2/b;

    iget-object p1, p1, Lw2/b;->d:Lw2/f$c;

    :cond_0
    iput-object p1, p0, Lw2/b;->d:Lw2/f$c;

    return-void
.end method


# virtual methods
.method public final a(Lw2/f$b;)Lw2/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/f$b;",
            ")TE;"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw2/b;->c:Lc3/l;

    invoke-interface {v0, p1}, Lc3/l;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/f$b;

    return-object p1
.end method
