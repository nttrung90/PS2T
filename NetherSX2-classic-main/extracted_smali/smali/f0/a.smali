.class public final Lf0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/a$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lf0/a$a;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lf0/a$a;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lf0/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_2
    iget-object v0, p0, Lf0/a;->b:Lf0/a$a;

    if-ne v0, p1, :cond_1

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    iput-object p1, p0, Lf0/a;->b:Lf0/a$a;

    .line 7
    iget-boolean v0, p0, Lf0/a;->a:Z

    if-eqz v0, :cond_2

    .line 8
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    invoke-interface {p1}, Lf0/a$a;->a()V

    return-void

    .line 10
    :cond_2
    :try_start_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
