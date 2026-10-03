.class public final Ln3/c;
.super Ln3/f;
.source "SourceFile"


# static fields
.field public static final e:Ln3/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln3/c;

    invoke-direct {v0}, Ln3/c;-><init>()V

    sput-object v0, Ln3/c;->e:Ln3/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget v0, Ln3/k;->b:I

    sget v1, Ln3/k;->c:I

    .line 2
    sget-wide v2, Ln3/k;->d:J

    .line 3
    invoke-direct {p0, v0, v1, v2, v3}, Ln3/f;-><init>(IIJ)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dispatchers.Default cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
