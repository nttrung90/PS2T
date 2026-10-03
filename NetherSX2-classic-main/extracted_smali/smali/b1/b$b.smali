.class public final Lb1/b$b;
.super Landroidx/lifecycle/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final e:Lb1/b$b$a;


# instance fields
.field public d:Lp/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/h<",
            "Lb1/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb1/b$b$a;

    invoke-direct {v0}, Lb1/b$b$a;-><init>()V

    sput-object v0, Lb1/b$b;->e:Lb1/b$b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/d0;-><init>()V

    .line 2
    new-instance v0, Lp/h;

    invoke-direct {v0}, Lp/h;-><init>()V

    iput-object v0, p0, Lb1/b$b;->d:Lp/h;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lb1/b$b;->d:Lp/h;

    .line 2
    iget v1, v0, Lp/h;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-gtz v1, :cond_1

    .line 3
    iget-object v4, v0, Lp/h;->d:[Ljava/lang/Object;

    move v5, v3

    :goto_0
    if-ge v5, v1, :cond_0

    .line 4
    aput-object v2, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput v3, v0, Lp/h;->e:I

    return-void

    .line 6
    :cond_1
    iget-object v0, v0, Lp/h;->d:[Ljava/lang/Object;

    aget-object v0, v0, v3

    .line 7
    check-cast v0, Lb1/b$a;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    throw v2
.end method
