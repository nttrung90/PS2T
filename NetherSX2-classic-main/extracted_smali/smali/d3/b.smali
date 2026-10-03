.class public abstract Ld3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld3/b$a;
    }
.end annotation


# instance fields
.field public transient c:Lg3/a;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Class;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ld3/b$a;->c:Ld3/b$a;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Ld3/b;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Ld3/b;->e:Ljava/lang/Class;

    .line 5
    iput-object v0, p0, Ld3/b;->f:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Ld3/b;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Ld3/b;->h:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1

    const-class v0, Lj3/q;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Ld3/b;->d:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Ld3/b;->e:Ljava/lang/Class;

    const-string p1, "classSimpleName"

    .line 11
    iput-object p1, p0, Ld3/b;->f:Ljava/lang/String;

    const-string p1, "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;"

    .line 12
    iput-object p1, p0, Ld3/b;->g:Ljava/lang/String;

    .line 13
    iput-boolean p2, p0, Ld3/b;->h:Z

    return-void
.end method


# virtual methods
.method public abstract b()Lg3/a;
.end method

.method public final c()Lg3/c;
    .locals 2

    .line 1
    iget-object v0, p0, Ld3/b;->e:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Ld3/b;->h:Z

    if-eqz v1, :cond_1

    .line 2
    sget-object v1, Ld3/j;->a:Ld3/k;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ld3/g;

    invoke-direct {v1, v0}, Ld3/g;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v0}, Ld3/j;->a(Ljava/lang/Class;)Lg3/b;

    move-result-object v0

    :goto_0
    return-object v0
.end method
