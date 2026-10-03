.class public final Lq3/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq3/k0$a;,
        Lq3/k0$e;,
        Lq3/k0$c;,
        Lq3/k0$b;,
        Lq3/k0$d;
    }
.end annotation


# static fields
.field public static final a:[Lq3/k0$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xa

    new-array v0, v0, [Lq3/k0$d;

    new-instance v1, Lq3/k0$d;

    const-string v2, ".*\\.bin$"

    const-string v3, ".*\\.mec$"

    const-string v4, ".*\\.nvr$"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f10006d

    const-string v4, "bios"

    invoke-direct {v1, v3, v4, v2}, Lq3/k0$d;-><init>(ILjava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lq3/k0$d;

    const-string v2, "*.pnach$"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f10007d

    const-string v4, "cheats"

    invoke-direct {v1, v3, v4, v2}, Lq3/k0$d;-><init>(ILjava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lq3/k0$d;

    const-string v2, ".*\\.pnach$"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f100078

    const-string v5, "cheats_ni"

    invoke-direct {v1, v4, v5, v3}, Lq3/k0$d;-><init>(ILjava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lq3/k0$d;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f100083

    const-string v4, "cheats_ws"

    invoke-direct {v1, v3, v4, v2}, Lq3/k0$d;-><init>(ILjava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lq3/k0$d;

    const-string v2, ".*\\.jpg$"

    const-string v3, ".*\\.jpeg$"

    const-string v4, ".*\\.png$"

    const-string v5, ".*\\.webp$"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f10006f

    const-string v5, "covers"

    invoke-direct {v1, v3, v5, v2}, Lq3/k0$d;-><init>(ILjava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lq3/k0$d;

    const-string v2, ".*\\.ini$"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f100073

    const-string v6, "gamesettings"

    invoke-direct {v1, v5, v6, v3}, Lq3/k0$d;-><init>(ILjava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lq3/k0$d;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f100076

    const-string v5, "inputprofiles"

    invoke-direct {v1, v3, v5, v2}, Lq3/k0$d;-><init>(ILjava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lq3/k0$d;

    const-string v2, ".*\\.ps2$"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f100077

    const-string v5, "memcards"

    invoke-direct {v1, v3, v5, v2}, Lq3/k0$d;-><init>(ILjava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lq3/k0$d;

    const-string v2, ".*\\.p2s$"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f10007e

    const-string v5, "sstates"

    invoke-direct {v1, v3, v5, v2}, Lq3/k0$d;-><init>(ILjava/lang/String;[Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lq3/k0$d;

    const-string v2, ".*\\.dds$"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f100081

    const-string v4, "textures"

    invoke-direct {v1, v3, v4, v2}, Lq3/k0$d;-><init>(ILjava/lang/String;[Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lq3/k0;->a:[Lq3/k0$d;

    return-void
.end method
