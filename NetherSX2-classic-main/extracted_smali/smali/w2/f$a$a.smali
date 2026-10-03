.class public final Lw2/f$a$a;
.super Ld3/f;
.source "SourceFile"

# interfaces
.implements Lc3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw2/f$a;->a(Lw2/f;Lw2/f;)Lw2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/f;",
        "Lc3/p<",
        "Lw2/f;",
        "Lw2/f$b;",
        "Lw2/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lw2/f$a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw2/f$a$a;

    invoke-direct {v0}, Lw2/f$a$a;-><init>()V

    sput-object v0, Lw2/f$a$a;->d:Lw2/f$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ld3/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lw2/f;

    check-cast p2, Lw2/f$b;

    const-string v0, "acc"

    .line 2
    invoke-static {p1, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p2}, Lw2/f$b;->getKey()Lw2/f$c;

    move-result-object v0

    invoke-interface {p1, v0}, Lw2/f;->minusKey(Lw2/f$c;)Lw2/f;

    move-result-object p1

    .line 4
    sget-object v0, Lw2/g;->c:Lw2/g;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    sget v1, Lw2/e;->b:I

    sget-object v1, Lw2/e$a;->c:Lw2/e$a;

    invoke-interface {p1, v1}, Lw2/f;->get(Lw2/f$c;)Lw2/f$b;

    move-result-object v2

    check-cast v2, Lw2/e;

    if-nez v2, :cond_1

    .line 6
    new-instance v0, Lw2/c;

    invoke-direct {v0, p1, p2}, Lw2/c;-><init>(Lw2/f;Lw2/f$b;)V

    :goto_0
    move-object p2, v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p1, v1}, Lw2/f;->minusKey(Lw2/f$c;)Lw2/f;

    move-result-object p1

    if-ne p1, v0, :cond_2

    .line 8
    new-instance p1, Lw2/c;

    invoke-direct {p1, p2, v2}, Lw2/c;-><init>(Lw2/f;Lw2/f$b;)V

    move-object p2, p1

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Lw2/c;

    new-instance v1, Lw2/c;

    invoke-direct {v1, p1, p2}, Lw2/c;-><init>(Lw2/f;Lw2/f$b;)V

    invoke-direct {v0, v1, v2}, Lw2/c;-><init>(Lw2/f;Lw2/f$b;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method
