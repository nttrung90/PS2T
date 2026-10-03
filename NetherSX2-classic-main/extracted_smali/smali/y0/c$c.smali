.class public final Ly0/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final d:Ly0/c$c;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ly0/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ly0/c$b;

.field public final c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ly0/l;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly0/c$c;

    invoke-direct {v0}, Ly0/c$c;-><init>()V

    sput-object v0, Ly0/c$c;->d:Ly0/c$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ly0/c$a;",
            ">;",
            "Ly0/c$b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ly0/l;",
            ">;>;>;)V"
        }
    .end annotation

    sget-object v0, Lv2/f;->c:Lv2/f;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v0, p0, Ly0/c$c;->a:Ljava/util/Set;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ly0/c$c;->b:Ly0/c$b;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    iput-object v0, p0, Ly0/c$c;->c:Ljava/util/LinkedHashMap;

    return-void
.end method
