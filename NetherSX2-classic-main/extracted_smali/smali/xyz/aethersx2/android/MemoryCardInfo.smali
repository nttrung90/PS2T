.class public Lxyz/aethersx2/android/MemoryCardInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lxyz/aethersx2/android/MemoryCardInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final FILE_TYPE_PS1:I = 0x5

.field public static final FILE_TYPE_PS2_16MB:I = 0x2

.field public static final FILE_TYPE_PS2_32MB:I = 0x3

.field public static final FILE_TYPE_PS2_64MB:I = 0x4

.field public static final FILE_TYPE_PS2_8MB:I = 0x1

.field public static final FILE_TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_EMPTY:I = 0x0

.field public static final TYPE_FILE:I = 0x1

.field public static final TYPE_FOLDER:I = 0x2


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lxyz/aethersx2/android/MemoryCardInfo;->c:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lxyz/aethersx2/android/MemoryCardInfo;->d:Ljava/lang/String;

    .line 4
    iput p3, p0, Lxyz/aethersx2/android/MemoryCardInfo;->e:I

    .line 5
    iput p4, p0, Lxyz/aethersx2/android/MemoryCardInfo;->f:I

    .line 6
    iput p5, p0, Lxyz/aethersx2/android/MemoryCardInfo;->g:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lxyz/aethersx2/android/MemoryCardInfo;

    invoke-virtual {p0, p1}, Lxyz/aethersx2/android/MemoryCardInfo;->compareTo(Lxyz/aethersx2/android/MemoryCardInfo;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lxyz/aethersx2/android/MemoryCardInfo;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lxyz/aethersx2/android/MemoryCardInfo;->c:Ljava/lang/String;

    iget-object p1, p1, Lxyz/aethersx2/android/MemoryCardInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lxyz/aethersx2/android/MemoryCardInfo;->c:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1}, Lxyz/aethersx2/android/MemoryCardInfo;->getTypeDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s (%s)"

    invoke-static {p1, v0}, Lxyz/aethersx2/android/FileHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFileType()I
    .locals 1

    iget v0, p0, Lxyz/aethersx2/android/MemoryCardInfo;->f:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxyz/aethersx2/android/MemoryCardInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxyz/aethersx2/android/MemoryCardInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lxyz/aethersx2/android/MemoryCardInfo;->g:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lxyz/aethersx2/android/MemoryCardInfo;->e:I

    return v0
.end method

.method public getTypeDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lxyz/aethersx2/android/MemoryCardInfo;->e:I

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const v0, 0x7f100144

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const v0, 0x7f100142

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget v0, p0, Lxyz/aethersx2/android/MemoryCardInfo;->f:I

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const v0, 0x7f100143

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "PS1/128KB"

    return-object p1

    :cond_3
    const-string p1, "PS2/64MB"

    return-object p1

    :cond_4
    const-string p1, "PS2/32MB"

    return-object p1

    :cond_5
    const-string p1, "PS2/16MB"

    return-object p1

    :cond_6
    const-string p1, "PS2/8MB"

    return-object p1

    :cond_7
    const v0, 0x7f100131

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
