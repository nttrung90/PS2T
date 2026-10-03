.class public final Lo2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo2/a$b;
    }
.end annotation


# static fields
.field public static c:Lo2/a;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo2/a;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/os/Handler;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lo2/a$a;

    invoke-direct {v2, p0}, Lo2/a$a;-><init>(Lo2/a;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lo2/a;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lo2/a;
    .locals 1

    .line 1
    sget-object v0, Lo2/a;->c:Lo2/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lo2/a;

    invoke-direct {v0}, Lo2/a;-><init>()V

    sput-object v0, Lo2/a;->c:Lo2/a;

    .line 3
    :cond_0
    sget-object v0, Lo2/a;->c:Lo2/a;

    return-object v0
.end method
