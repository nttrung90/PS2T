.class public final synthetic Lq3/o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic d:Lq3/o2;

.field public static final synthetic e:Lq3/o2;


# instance fields
.field public final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lq3/o2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq3/o2;-><init>(I)V

    sput-object v0, Lq3/o2;->d:Lq3/o2;

    new-instance v0, Lq3/o2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lq3/o2;-><init>(I)V

    sput-object v0, Lq3/o2;->e:Lq3/o2;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lq3/o2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lq3/o2;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->g()V

    return-void

    :goto_0
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->i()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
