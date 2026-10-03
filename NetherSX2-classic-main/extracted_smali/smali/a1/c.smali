.class public final La1/c;
.super La1/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, La1/a$a;->b:La1/a$a;

    const-string v1, "initialExtras"

    .line 2
    invoke-static {v0, v1}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, La1/a;-><init>()V

    .line 4
    iget-object v1, p0, La1/a;->a:Ljava/util/LinkedHashMap;

    iget-object v0, v0, La1/a;->a:Ljava/util/LinkedHashMap;

    .line 5
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(La1/a;)V
    .locals 1

    const-string v0, "initialExtras"

    invoke-static {p1, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, La1/a;-><init>()V

    .line 7
    iget-object v0, p0, La1/a;->a:Ljava/util/LinkedHashMap;

    iget-object p1, p1, La1/a;->a:Ljava/util/LinkedHashMap;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
