.class public final Lc1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc1/a;


# direct methods
.method public constructor <init>(Lc1/a;)V
    .locals 0

    iput-object p1, p0, Lc1/a$a;->c:Lc1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lc1/a$a;->c:Lc1/a;

    invoke-virtual {v0}, Lc1/a;->F()V

    return-void
.end method
