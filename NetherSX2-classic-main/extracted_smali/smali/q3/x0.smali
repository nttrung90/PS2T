.class public final synthetic Lq3/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lq3/y0;

.field public final synthetic d:[Ljava/lang/String;

.field public final synthetic e:Lxyz/aethersx2/android/AndroidProgressCallback;

.field public final synthetic f:Landroidx/fragment/app/o;


# direct methods
.method public synthetic constructor <init>(Lq3/y0;[Ljava/lang/String;Lxyz/aethersx2/android/AndroidProgressCallback;Landroidx/fragment/app/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/x0;->c:Lq3/y0;

    iput-object p2, p0, Lq3/x0;->d:[Ljava/lang/String;

    iput-object p3, p0, Lq3/x0;->e:Lxyz/aethersx2/android/AndroidProgressCallback;

    iput-object p4, p0, Lq3/x0;->f:Landroidx/fragment/app/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lq3/x0;->c:Lq3/y0;

    iget-object v1, p0, Lq3/x0;->d:[Ljava/lang/String;

    iget-object v2, p0, Lq3/x0;->e:Lxyz/aethersx2/android/AndroidProgressCallback;

    iget-object v3, p0, Lq3/x0;->f:Landroidx/fragment/app/o;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {v1, v2}, Lxyz/aethersx2/android/NativeLibrary;->downloadCovers([Ljava/lang/String;Lxyz/aethersx2/android/AndroidProgressCallback;)V

    .line 2
    new-instance v1, Landroidx/emoji2/text/e;

    const/4 v4, 0x3

    invoke-direct {v1, v0, v2, v3, v4}, Landroidx/emoji2/text/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
