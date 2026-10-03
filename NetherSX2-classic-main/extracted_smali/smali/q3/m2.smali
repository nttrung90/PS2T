.class public final synthetic Lq3/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroid/os/Vibrator;

.field public final synthetic f:Landroid/os/Vibrator;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILandroid/os/Vibrator;Landroid/os/Vibrator;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lq3/m2;->c:I

    iput p2, p0, Lq3/m2;->d:I

    iput-object p3, p0, Lq3/m2;->e:Landroid/os/Vibrator;

    iput-object p4, p0, Lq3/m2;->f:Landroid/os/Vibrator;

    iput-object p5, p0, Lq3/m2;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lq3/m2;->c:I

    iget v1, p0, Lq3/m2;->d:I

    iget-object v2, p0, Lq3/m2;->e:Landroid/os/Vibrator;

    iget-object v3, p0, Lq3/m2;->f:Landroid/os/Vibrator;

    iget-object v4, p0, Lq3/m2;->g:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lxyz/aethersx2/android/NativeLibrary;->h(IILandroid/os/Vibrator;Landroid/os/Vibrator;Ljava/lang/Object;)V

    return-void
.end method
