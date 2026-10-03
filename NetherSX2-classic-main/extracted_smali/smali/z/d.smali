.class public final Lz/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/app/Application;

.field public final synthetic d:Lz/f$a;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lz/f$a;)V
    .locals 0

    iput-object p1, p0, Lz/d;->c:Landroid/app/Application;

    iput-object p2, p0, Lz/d;->d:Lz/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lz/d;->c:Landroid/app/Application;

    iget-object v1, p0, Lz/d;->d:Lz/f$a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
