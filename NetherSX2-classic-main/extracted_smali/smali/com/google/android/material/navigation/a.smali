.class public final Lcom/google/android/material/navigation/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/e$a;


# instance fields
.field public final synthetic c:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/a;->c:Lcom/google/android/material/navigation/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/navigation/a;->c:Lcom/google/android/material/navigation/NavigationView;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView;->j:Lcom/google/android/material/navigation/NavigationView$a;

    if-eqz p1, :cond_0

    check-cast p1, Lq3/u;

    iget-object p1, p1, Lq3/u;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/MainActivity;

    invoke-static {p1, p2}, Lxyz/aethersx2/android/MainActivity;->A(Lxyz/aethersx2/android/MainActivity;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Landroidx/appcompat/view/menu/e;)V
    .locals 0

    return-void
.end method
