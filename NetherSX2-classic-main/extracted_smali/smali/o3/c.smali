.class public Lo3/c;
.super Lo3/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo3/f<",
        "Ljava/lang/String;",
        "Lo3/l;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "(?<!\\\\)\\$\\{(([^\\[\\}]+)(\\[([0-9]+)\\])?/)?([^\\[^/\\}]+)(\\[(([0-9]+))\\])?\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo3/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final l(Ljava/lang/String;)Lo3/l;
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Lo3/h;

    .line 2
    iget-object v0, v0, Lo3/h;->f:Lo3/g;

    .line 3
    iget-boolean v1, v0, Lo3/g;->u:Z

    if-eqz v1, :cond_0

    .line 4
    iget-char v0, v0, Lo3/g;->s:C

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lo3/a;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Lo3/c;->l(Ljava/lang/String;)Lo3/l;

    .line 9
    :cond_0
    new-instance v0, Lo3/d;

    invoke-direct {v0, p0, p1}, Lo3/d;-><init>(Lo3/c;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, p1, v1}, Lo3/a;->j(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lo3/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo3/l;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lo3/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo3/l;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lo3/c;->l(Ljava/lang/String;)Lo3/l;

    move-result-object v0

    .line 3
    :cond_0
    invoke-interface {v0, p2, p3}, Lo3/k;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
