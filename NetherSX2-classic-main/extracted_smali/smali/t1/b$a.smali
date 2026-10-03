.class public final Lt1/b$a;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/b;->a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lt1/b;


# direct methods
.method public constructor <init>(Lt1/b;)V
    .locals 0

    iput-object p1, p0, Lt1/b$a;->a:Lt1/b;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt1/b$a;->a:Lt1/b;

    iget-object v0, v0, Lt1/b;->b:Lcom/google/android/material/bottomappbar/BottomAppBar;

    sget v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->f0:I

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
