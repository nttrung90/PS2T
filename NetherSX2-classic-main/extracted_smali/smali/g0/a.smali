.class public final Lg0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lv/d;

.field public final synthetic d:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lv/d;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lg0/a;->c:Lv/d;

    iput-object p2, p0, Lg0/a;->d:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg0/a;->c:Lv/d;

    iget-object v1, p0, Lg0/a;->d:Landroid/graphics/Typeface;

    check-cast v0, Lc0/e$a;

    .line 2
    iget-object v0, v0, Lc0/e$a;->Y:Lb0/d$e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lb0/d$e;->e(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
