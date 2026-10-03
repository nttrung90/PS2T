.class public final Lz/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lz/f$a;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lz/f$a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lz/c;->c:Lz/f$a;

    iput-object p2, p0, Lz/c;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lz/c;->c:Lz/f$a;

    iget-object v1, p0, Lz/c;->d:Ljava/lang/Object;

    iput-object v1, v0, Lz/f$a;->a:Ljava/lang/Object;

    return-void
.end method
