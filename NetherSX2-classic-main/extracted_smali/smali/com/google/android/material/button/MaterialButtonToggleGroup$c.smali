.class public final Lcom/google/android/material/button/MaterialButtonToggleGroup$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButtonToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final e:Ln2/a;


# instance fields
.field public a:Ln2/c;

.field public b:Ln2/c;

.field public c:Ln2/c;

.field public d:Ln2/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln2/a;-><init>(F)V

    sput-object v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->e:Ln2/a;

    return-void
.end method

.method public constructor <init>(Ln2/c;Ln2/c;Ln2/c;Ln2/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->a:Ln2/c;

    .line 3
    iput-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->b:Ln2/c;

    .line 4
    iput-object p4, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->c:Ln2/c;

    .line 5
    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->d:Ln2/c;

    return-void
.end method
