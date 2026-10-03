.class public final Lc0/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/j;->e([Lg0/m;I)Lg0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc0/j$b<",
        "Lg0/m;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lg0/m;

    .line 2
    iget p1, p1, Lg0/m;->c:I

    return p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lg0/m;

    .line 2
    iget-boolean p1, p1, Lg0/m;->d:Z

    return p1
.end method
