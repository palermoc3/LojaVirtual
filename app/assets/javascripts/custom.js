function showTooltip() {
    var tooltip = document.getElementById('tooltip');
    tooltip.classList.remove('invisible');
    tooltip.classList.add('visible');
  }

  function hideTooltip() {
    var tooltip = document.getElementById('tooltip');
    tooltip.classList.remove('visible');
    tooltip.classList.add('invisible');
  }

  function toggleVisibility() {
    var button = document.getElementById('toggleButton');
    var tooltip = document.getElementById('tooltip');

    if (button.classList.contains('visible')) {
      button.classList.remove('visible');
      button.classList.add('invisible');
    } else {
      button.classList.remove('invisible');
      button.classList.add('visible');
    }

    // Oculta o tooltip ao alterar a visibilidade do botão
    hideTooltip();
  }