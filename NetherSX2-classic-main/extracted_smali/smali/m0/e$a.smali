.class public final Lm0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/inputmethod/InputContentInfo;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Landroid/view/inputmethod/InputContentInfo;

    iput-object p1, p0, Lm0/e$a;->a:Landroid/view/inputmethod/InputContentInfo;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lm0/e$a;->a:Landroid/view/inputmethod/InputContentInfo;

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lm0/e$a;->a:Landroid/view/inputmethod/InputContentInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputContentInfo;->requestPermission()V

    return-void
.end method
