.class public final synthetic Lq3/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
.field public static final synthetic a:Lq3/l2;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lq3/l2;

    invoke-direct {v0}, Lq3/l2;-><init>()V

    sput-object v0, Lq3/l2;->a:Lq3/l2;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p1}, Lxyz/aethersx2/android/NativeLibrary;->l(Landroid/media/MediaPlayer;)V

    return-void
.end method
