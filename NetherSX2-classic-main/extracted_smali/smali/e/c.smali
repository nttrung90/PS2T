.class public final Le/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/b$b;


# instance fields
.field public final synthetic a:Le/e;


# direct methods
.method public constructor <init>(Le/e;)V
    .locals 0

    iput-object p1, p0, Le/c;->a:Le/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Le/c;->a:Le/e;

    invoke-virtual {v1}, Le/e;->x()Le/g;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
