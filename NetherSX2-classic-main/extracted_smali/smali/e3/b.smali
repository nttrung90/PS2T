.class public final Le3/b;
.super Le3/a;
.source "SourceFile"


# instance fields
.field public final e:Le3/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le3/a;-><init>()V

    .line 2
    new-instance v0, Le3/b$a;

    invoke-direct {v0}, Le3/b$a;-><init>()V

    iput-object v0, p0, Le3/b;->e:Le3/b$a;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Random;
    .locals 2

    iget-object v0, p0, Le3/b;->e:Le3/b$a;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "implStorage.get()"

    invoke-static {v0, v1}, Lv/d;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method
